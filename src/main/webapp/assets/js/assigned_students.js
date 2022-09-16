var getsalesmans='';
var comment="";

$(document).ready(function() {
	 
$.ajax({
	  url : base_url+"rest/salesman/salesmansids",
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  success:function(data){
	
		var salesMandata = '';
	
		 for(var i =0; i<data.length;i++){
		salesMandata +='<option value="'+data[i].id+'">'+data[i].salesMan+'</option>';
		} 
		  $("#salesmanId").empty("");
	        $("#salesmanId").append('<option value="";>Select Sales Man </option>'); 
			 $('#salesmanId').append(salesMandata); 
			
 		
	  },
    	  
	  
	  error:function(data){
    	  alert(data.errorMessage);
      }
	 
});
});



function sendSalesmanData(){

	var salesmanId=$("#salesmanId").val();

	$.ajax({
		url : base_url+"rest/salesman/getStudentsforSalesman/"+salesmanId,

		type:"GET",
		dataType:"json",
		contentType:'application/json',
		 beforeSend: function(){
			 
			 $("#tablebody").empty();
			 $("#tablebody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		
		 },
		success:function(data){
			 $("#loading").hide();
			var tabledata = '';
			for(var i =0; i<data.length;i++){
				tabledata +='<tr>'+
				'<td class="text-center">' + data[i].student_id + '</td>'+
				'<td class="text-center">' + data[i].name + '</td>'+
				'<td class="#text-center">' + data[i].mobile + '</td>'+
				'<td class="#text-center">' + data[i].views + '</td>';


				if(data[i].comment =="" || data[i].comment==null){
					
					tabledata+='<td class="text-center"><a href"#"  class="btn btn-danger">not contacted'+'</a></td>'
					}
					else{
						
					 comment=data[i].comment;
					 var cm=comment.replace(/\n/g, ' ');
						tabledata+='<td class="text-center"><a href"#" data-toggle="modal" data-target="#exampleModalLong1"  onclick="showconctact('+"'"+data[i].id+"'"+','+"'"+cm+"'"+')" class="btn btn-success">contacted'+'</a></td>'
						
					}
				tabledata+='<td><input class="stddetail"  name=checkbox value="'+data[i].student_id+'" id="studentid" type="checkbox" style="width:218px;height:30px;"></td>'+

				'</tr>';
}

			$("#tablebody").empty();
			$('#myTables').DataTable().clear().destroy();
			$('#tablebody').append(tabledata); 
			$('#myTables').DataTable(); 



		},

		error:function(data){
			  $("#tablebody").empty();
				 $("#tablebody").html('<tr class="odd"><td valign="top" colspan="9" class="dataTables_empty text-center">No data available in table'+'</td></tr>');
						
			 	
		}

	});


}




$('#salesmanId').change(function(){


	getsalesmans = $('#salesmanId').val();


});

var stdid=[];
var getsalesids="";
var stdid_arry=[];
var stdid1=[];
var m=[];
var i=0;


function submit(){
	
	var checkedValue = [];
	
	var oTable = $('#myTables').DataTable();
		
		var rowcollection =  oTable.$(".stddetail:checked", {"page": "all"});
		
		rowcollection.each(function(index,elem){
			
		 //$("input:checkbox[name=checkbox]:checked").each(function(){
			
			 checkedValue.push( $(elem).val());
			 
		})
			 
		
		var studentResult = checkedValue.map(i=>Number(i));

	/*$('.stddetail:checked').each(function (){

		m=$(this).val()// for storinf in a list


	});*/
		/*var s=m.split("@@");

		console.log("Pprint i "+ (++i));
		console.log(s) */
		/*var studentdetails={

			"student_id":s[0]*/
			/*"name":s[1],
			"mobile":s[2],
			"city":s[3],
			"state":s[4],
			"category":s[5],	
			"emailId":s[6]	*/	
		/*}*/
	/*	stdid_arry.push(s);	   
	}); */     

	/*if(stdid=="" || stdid==null){

		alert("Please select checkboxes")
		return false
	}



	for(var i=0;i<stdid.length;i++){

		stdid1.push(stdid[i].split("@@"));


	}

for(var i=0;i<stdid1.length;i++){

	var studentdetails={

			"student_id":stdid1[i][0],

			"name":stdid1[i][1],
			"mobile":stdid1[i][2],
			"city":stdid1[i][3],
			"state":stdid1[i][4],
			"category":stdid1[i][5],

			"emailId":stdid1[i][6]


	}

	stdid_arry.push(studentdetails);	

	}
	 */	
	/*	
$('.stddetail:checked').each(function (){
    stdid.push($(this).val());
 });      

if(stdid=="" || stdid==null){

	alert("Please select checkboxes")
	return false
}



for(var i=0;i<stdid.length;i++){

	stdid1.push(stdid[i].split("@@"));


}

for(var i=0;i<stdid1.length;i++){

var studentdetails={

		"student_id":stdid1[i][0],

		"name":stdid1[i][1],
		"mobile":stdid1[i][2],
		"city":stdid1[i][3],
		"state":stdid1[i][4],
		"category":stdid1[i][5],

		"emailId":stdid1[i][6]


}

stdid_arry.push(studentdetails);	

}

	 */
	getsalesids=getsalesmans

	var salesManId=parseInt(getsalesids)
	if(getsalesmans=="" || getsalesmans==null){

		alert("Please select salesman")
		return false
	}

	var stdsalesids ={

			studentIds: studentResult,
			salesmanId: salesManId
	}	
	var standstr = JSON.stringify(stdsalesids);

	console.log(standstr);
		$.ajax({
		url: base_url+'rest/salesman/updateStudents',
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


function showconctact(id,cm){
	
	var tab="";
	
	tab='<div style="display:flex;justify-content:center;margin-top:10px">'+
		"<textarea id='cmnt'  rows='8' cols='75' placeholder='Enter Info' disabled>"+cm+"</textarea></div>";
		
	
		$("#salesman_comment").empty("");
	
		$('#salesman_comment').append(tab);
		
}
