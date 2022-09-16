var states="";
var city="";
var getsalesmans="";

$(document).ready(function() {

	selectstates();
	getall();
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



	selectcity(states);
	

	 selectsalesman(states);

});




function selectcity(states){


	$.ajax({
		url : base_url+"rest/admin/getcities/"+states,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){

			var statesdata = '';

			for(var i =0; i<data.length;i++){

				statesdata +='<option value="'+data[i].id+'">'+data[i].name+'</option>';

			}

			$("#City").empty("");
			$("#City").append('<option value="0";>Select City </option>'); 
			$('#City').append(statesdata);

		},

		error:function(data){

			/*$("#studentProfile_card").empty("");
		alertify. alert("Student not found with this Phone number");*/

		}
	});
}
var selectcity1="0";
var selectstate1="0";
function getall(){

	var selectcity=$("#City").val();

	var selectstate=$("#States").val();
	
	/*
	var datepicker1=$("#datepicker1").val();

	var datepicker2=$("#datepicker2").val();
	*/
	
	var newdate ="";
		var newdate1="";

		/*var fromdate=$("#fromDate").val();*/
		var datepicker1=$("#datepicker1").val();
		console.log(datepicker1)
		if(datepicker1 ==""|| datepicker1 ==null || datepicker1 ==undefined){
			
			newdate=""; 
		}
		
		
		else{
		var datearray = datepicker1.split("-");
		
		newdate = datearray[2] + '-' + datearray[1] + '-' + datearray[0];
		
		console.log(newdate)
		}
		/*var todate=$("#toDate").val();*/
		var datepicker2=$("#datepicker2").val();
			console.log(datepicker2)
	if(datepicker2 ==""|| datepicker2 ==null || datepicker2 ==undefined){
			
		newdate1=""; 
		}
	
	else{
		var datearray1 = datepicker2.split("-");
		
		newdate1 = datearray1[2] + '-' + datearray1[1] + '-' + datearray1[0];
	console.log(newdate1)
	}

	

	if(selectcity=="" || selectcity==null){
		selectcity=selectcity1
	}
	if(selectstate=="" || selectstate==null){

		selectstate=selectstate1
	}



	/*$.ajax({
		url : base_url+"rest/saents/lesman/getStud"+selectstate+"/"+selectcity,

		type:"GET",
		dataType:"json",
		contentType:'application/json',
		  beforeSend: function(){*/

			var stdsalesids ={

			stateId:selectcity,
			cityId:selectstate,
			fromdate:newdate,
			todate:newdate1
	}	
	var standstr = JSON.stringify(stdsalesids);

	$.ajax({
		url: base_url+'rest/salesman/getStudentsfilter',
		type:"POST",
		dataType: "json",
		contentType:'application/json',
		data: standstr,
		beforeSend: function(){
				 
				 $("#tablebody").empty();
				 $("#tablebody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
			
			 },
		success:function(data){
			  $("#loading").hide();
			var tabledata = '';
			for(var i =0; i<data.length;i++){
				tabledata +='<tr>'+
				'<td class="text-center">' + data[i].studentid + '</td>'+
				'<td class="text-center">' + data[i].name + '</td>'+
				'<td class="text-center">' + data[i].mobilenumber + '</td>'+


				'<td class="text-center">' + data[i].emailid + '</td>'+
				'<td><input class="stddetail"   style="width:218px;height:30px;" name=[] value="'+data[i].studentid+'@@' + data[i].name + '@@' + data[i].mobilenumber + '@@' + data[i].city + '@@' + data[i].state + '@@' + data[i].categoryName + '@@' + data[i].emailid + '" id="studentid" type="checkbox"></td>'+

				'</tr>'



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




function selectsalesman(saleid){


	$.ajax({
		url : base_url+"rest/salesman/salesMansByStateId/"+saleid,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){

			var salesMandata = '';

			for(var i =0; i<data.length;i++){

				salesMandata +='<option value="'+data[i].id+'">'+data[i].salesMan+'</option>';

			}

			$("#selectsalesman").empty("");
			$("#selectsalesman").append('<option value="";>Select Sales Man </option>'); 
			$('#selectsalesman').append(salesMandata);

		},

		error:function(data){

			/*$("#studentProfile_card").empty("");
		alertify. alert("Student not found with this Phone number");*/

		}
	})  
}


$('#selectsalesman').change(function(){


	getsalesmans = $('#selectsalesman').val();


});

var stdid=[];
var getsalesids="";
var stdid_arry=[];
var stdid1=[];
var m="";
var i=0;
function submit(){

var oTable = $('#myTables').DataTable();
	
	var rowcollection =  oTable.$(".stddetail:checked", {"page": "all"});
	
	rowcollection.each(function(index,elem){
		
	
	    m = $(elem).val();

		console.log("Pprint i "+ (++i));
		console.log(s) 
		var studentdetails={

			"student_id":s[0],
			"name":s[1],
			"mobile":s[2],
			"city":s[3],
			"state":s[4],
			"category":s[5],	
			"emailId":s[6]		
		}
		stdid_arry.push(studentdetails);	   
	});      

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

	if(getsalesmans=="" || getsalesmans==null){

		alert("Please select salesman")
		return false
	}

	var stdsalesids ={

			students: stdid_arry,
			salesManId: getsalesids
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


