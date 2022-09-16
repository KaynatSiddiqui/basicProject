//livezone create 
//standard flow change
function createlivezoneadd(){
	
	var livetestype = $("#livetesttype").val();
	var testname1 = $("#testname").val();
	var categoryname = $("#category").val();
	var examtypename = $("#examtype").val();
	var standardname = $("#standard").val();
	var subjectname = $("#subject").val().map(Number);
	/*var unitname = $("#unit").val();
	var chaptername = $("#chapter").val();
	var topicname = $("#topic").val();*/
	var questionname = $("#questionType").val();
	var comments = $("#comments").val();
	var testtime = parseInt($("#testtime").val());
	var totalmarks = $("#totalmarks").val();
	var opendate = $("#opendate").val();
	var closedate = $("#closedate").val();
	var openingtime = $("#timepicker1").val();
	var endingtime = $("#timepicker2").val();
	var activedate = $("#activedate").val();
	var expirydate = $("#expirydate").val();
	var activetime = $("#activepicker").val();
	var expirytime = $("#expirypicker").val();
	/*var syllabus = $("#syllabus").val();*/
	var enablesuggest = $("#enablesuggest").val();
	
/*	if(livetestype == "Full-Syllabus Mock" ){
		var enablesuggest = "Enable";
	}else{
		
	}*/
	
	
	

	//var enablesuggest = $("#enablesuggest").val();
	var syl =  CKEDITOR.instances.editor1.getData();
	if(enablesuggest == "Enable"){
		enablesuggest = "true";
	}else if(enablesuggest == "" || enablesuggest == "--- Select ---"){
		alert("please select Suggest syllabus");
		return false;
	}else{
		enablesuggest = "false";
	}
		//subjectnamearr = subjectname.join(",");
	
	
	var livezonecreate = {
			"adminId":1,
			"testType":livetestype,
			"testName":testname1,
			"openingTime":openingtime,
			"closingTime":endingtime,
			"examtypeId":examtypename,
			"subjectId":subjectname,
			"numofquestions":questionname,
			"testTime":testtime,
			"openingDate":opendate,
			"closingDate":closedate,
			"syllabus":syl,
			"totalMarks":totalmarks,
			"createdBy":"santosh",
			"enableSuggestSyllabus":enablesuggest,
			"standardId":standardname,
			"comments":comments,
			"categoryId":categoryname,
			"activeDate":activedate,
			"expiyDate":expirydate,
			"expiyTime":expirytime,
			"activeTime":activetime
	};

	var livezonestr = JSON.stringify(livezonecreate);

	$.ajax({
		 url: base_url+'rest/livezone/v1/addupcoming',
		 type:"POST",
		 contentType:'application/json',
		 dataType:"json",
		 data:livezonestr,
		 success: function(data){
			 postNowUpcoming(data.details);
		     
		      var timer;
			  window.clearTimeout(timer); 
			  alert(data.message);
			  timer = window.setTimeout(function(){
				  
				  window.location = base_url+"jsp/admin/live_zone/upcoming_published.jsp";
				  },1000); 
		      
		 },
		 error:function(data){
			  alert(data.responseJSON.errorMessage);
		 }	
	})
}

//livezone create 
function postNowUpcoming(id){
		

	$.ajax({
		url:base_url+'rest/automatic/upcomingtestpostmail/'+id,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}

//live-zone upcoming exam get method

function liveUpcomingExm(){
	var appenddata="";
	var id = getParameterByName('id');
	$.ajax({
		url: base_url+'rest/livezone/v1/getpublishedlivezones/1',
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			for(var i=0; i<data.length; i++){
				appenddata += "<tr id='liveexam_row"+data[i].id+"' data-id='"+data[i].id+"'><td>"+data[i].testType+"</td>"; 
				appenddata += "<td>"+data[i].testName+"</td>";
				appenddata += "<td>"+data[i].standard+"</td>";
				appenddata += "<td>"+data[i].examType+"</td>";
				appenddata += "<td>"+data[i].subjects+"</td>";
				appenddata += "<td>"+data[i].numofquestions+"</td>";
				appenddata += "<td>"+data[i].testTime+"</td>";
				appenddata += "<td>"+data[i].totalMarks+"</td>";
				appenddata += "<td>"+data[i].openingDate+"</td>";
				appenddata += "<td>"+data[i].closingDate+"</td>";

/*appenddata += "<td>"+data[i].status+"</td>";*/
appenddata += "<td><a class='btn btn-xs' data-id='"+data[i].id+"' onclick='getsyllabus(this)' data-toggle='modal' data-target='#admin-upcoming-syllabus' data-whatever='@mdo'><img src='"+base_url+"/assets/images/icons/Syllabus.svg' class='btn-icon' alt='Smiley face' style='width: 30px;height: 29px;'></a></td>";
if(data[i].suggestsyllabus == true){
appenddata += "<td>Enable</td>";
}else{
	appenddata += "<td>Disable</td>";
}
appenddata += "<td><a href='' class='btn btn-success btn-icon-anim btn-circle p-10' data-toggle='modal' data-target='#exampleModal2' data-whatever='@mdo' onclick='publishedView(this)'  data-id='"+data[i].id+"'><i class='icon-eye font-18'></i></a></td>";
appenddata	+= "<td><a href=''><span class='btn btn-active btn-icon-anim btn-circle'><i class='fa fa-thumbs-up font-18 mt-10'></i></span></a></td>"
appenddata += "<td><a class='btn btn-delete btn-icon-anim btn-circle p-10' data-toggle='tooltip' id='live-del"+data[i].id+"' data-id='"+data[i].id+"' data-original-title='Delete'><i class='icon-trash font-18'></i></a></td></tr>";
}
$("#upcomingexm-body").empty();
$('#upcomingexam-table').DataTable().clear().destroy();
$("#upcomingexm-body").append(appenddata);
$("#upcomingexam-table").DataTable();
},
error:function(){
	alert(data.responseJSON.errorMessage);
}
});
}

function liveactiveexams(){
	var appenddata;
	var id = getParameterByName('id');
	$.ajax({
	url: base_url+'rest/livezone/v1/getpublishedliveActivezones/1',
	type:"GET",
	dataType:"json",
	contentType:'application/json',
	success:function(data){
	for(var i=0; i<data.length; i++){
	appenddata += "<tr id='liveexam_row"+data[i].id+"' data-id='"+data[i].id+"'><td>"+data[i].testType+"</td>"; 
	appenddata += "<td>"+data[i].testName+"</td>";
	appenddata += "<td>"+data[i].examType+"</td>";
	appenddata += "<td>"+data[i].subjects+"</td>";
	appenddata += "<td>"+data[i].numofquestions+"</td>";
	appenddata += "<td>"+data[i].testTime+"</td>";
	appenddata += "<td>"+data[i].openingDate+"</td>";
	appenddata += "<td>"+data[i].closingDate+"</td>";

	/*appenddata += "<td>"+data[i].status+"</td>";*/
	appenddata += "<td><a class='btn'  data-toggle='modal' data-target='#getactivesyllabus' onclick='getActivesyllabus(this)' data-whatever='@mdo' data-id='"+data[i].id+"'><img src='"+base_url+"/assets/images/icons/Syllabus.svg' class='btn-icon' alt='Smiley face' style='width: 30px;height: 29px;'></a></td>";
	/*if(data[i].suggestsyllabus == true){
	appenddata += "<td>Enable</td>";
	}else{
		appenddata += "<td>Disable</td>";
	}*/
	appenddata += "<td><a href='' class='btn btn-success btn-icon-anim btn-circle p-10' data-toggle='modal' data-target='#studentsuggest' data-whatever='@mdo' onclick='liveactiveview(this)'  data-id='"+data[i].id+"'><i class='icon-eye font-18'></i></a></td>";
	appenddata += "<td><a class='btn btn-delete btn-icon-anim btn-circle p-10'  data-id='"+data[i].id+"' onclick='deletelivetest(this)'><i class='icon-trash font-18'></i></a></td>";
	/*appenddata	+= "<td><a href=''><span class='btn btn-primary btn-rounded status_btn'>Active</span></a></td>"
	appenddata += "<td><a class='btn btn-delete btn-icon-anim btn-circle p-10' data-toggle='tooltip' id='live-del"+data[i].id+"' data-id='"+data[i].id+"' data-original-title='Delete'><i class='icon-trash font-18'></i></a></td></tr>";
	*/
	}
	$("#active_body").empty();
	 $('#active_table').DataTable().clear().destroy();
	$("#active_body").append(appenddata);
	$("#active_table").DataTable();
	},
	error:function(){
		alert(data.responseJSON.errorMessage);
	}
	});
	}
 
function deletelivetest(elem){
	
	var testpostid = $(elem).attr('data-id');
	var con = confirm("Are you Sure to delete?");
	var pon = confirm("Really are you Sure?");
	 if(con == true){
	 if(pon == true){
	$.ajax({
		url: base_url+'rest/livezone/v1/deletelivezoneActivebyid/'+testpostid,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			alert(data.message);
			$("#liveexam_row"+testpostid).remove();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
		});
	 }
	 }
}

function liveactiveview(elem){
	 
	 
	 var id = $(elem).attr('data-id');
	 var appenddata = "";
		$.ajax({
			type:"GET",
			 dataType: "json",
			 contentType: 'application/json', 
			 url: base_url+'rest/livezone/v1/getsuggestedsyllabusforactive/'+id,
			 success:function(data){
				 $("#totalsuggestcount").html(data.length);
				 for(var i=0;i<data.length;i++){
					 appenddata += "<tr><td>"+data[i].studentAccountId+"</td>";
					 appenddata += "<td>"+data[i].studentName+"</td>";
					 appenddata += "<td>"+data[i].state+"</td>";
					 appenddata += "<td>"+data[i].city+"</td>";
					 appenddata += "<td>"+data[i].standard+"</td>";
					 appenddata += "<td>"+data[i].subject+"</td>";
					 var Chapterslist=[];
	                  var Chapterslistview = data[i].chaptersList;
	                  
						if(Chapterslistview !="" && Chapterslistview !=null    ){
							for(var prev1 = 0; prev1 < Chapterslistview.length;prev1++){
								
								Chapterslist.push(Chapterslistview[prev1].name);
								}
						}
						
						 appenddata += "<td>"+Chapterslist.join()+"</td>";
			 appenddata += "<td>"+data[i].comment+"</td></tr>";
				 }
				 $("#actveviewtablebody").empty();
				 $('#activeviewtable').DataTable().clear().destroy();
				 $("#actveviewtablebody").append(appenddata);
				 $("#activeviewtable").DataTable();
				 
			 },
			 error:function(data){
				 alert(data.responseJSON.errorMessage);
			 }
		});
}
function getActivesyllabus(elem) {

	var id = $(elem).attr('data-id');
	var appenddata = "";
	$.ajax({
	type:"GET",
	dataType: "json",
	contentType: 'application/json', 
	url: base_url+'rest/student/v1/getLivezonesyllabus/'+id,
	success:function(data){
	var testPostDetails = data.testPostDetails;
	for(var i=0;i<testPostDetails.length;i++){

	appenddata +=  "<div class='panel panel-default'>"+
	"<div class='panel-heading' role='tab'>"+
	"<a role='button' data-toggle='collapse' data-parent='#activesyllabus_tbody' href='#collapse_"+i+"' aria-expanded='true' ><i class='fa fa-plus-circle fa-lg'></i>&nbsp;"+testPostDetails[i].subject+"</a>"+
	"</div>"+
	"<div id='collapse_"+i+"' class='panel-collapse collapse in' role='tabpanel'>"+
	"<div class='panel-body pa-15'>"+
	"<div class='row'>"+
	"<div class='col-sm-12 col-xs-12'>";
	for(var j=0;j<testPostDetails[i].chapters.length;j++){

	  var chapter = testPostDetails[i].chapters[j];
	  var chaptersplit = chapter.split(",");
	  var chapterjoin = chaptersplit.join();
	appenddata += "<div class='mb-10'>"+chapterjoin+"</div>";
	}
	appenddata += "</div></div></div></div></div>";

	}
	$("#activesyllabus_tbody").empty();
	$("#activesyllabus_tbody").append(appenddata);

	},
	error:function(data){
		alert(data.responseJSON.errorMessage);
	}
	})

	}
//live-zone upcoming exam get method



//live-zone upcoming exam delet method

$(document).on("click", "a[id^=live-del]", function() {
var id = $(this).attr('data-id');
var con = confirm("Are you Sure to delete?");
var pon = confirm("Really are you Sure?");
 if(con == true){
 if(pon == true){
 
var deleterow =  {
"liveZoneId":id,
"deleteStatus":false
}
var deletetopic = JSON.stringify(deleterow);

$.ajax({
 type: "POST",
 dataType: "json",
 contentType: 'application/json', 
 url: base_url+'rest/livezone/v1/deletelivezone',
 data:deletetopic,
 success: function(data){	 
 if(data.status){
alert(data.message);
$("#liveexam_row"+id).remove();
 }
 },
   
 error: function(data){
	 alert(data.responseJSON.errorMessage);
  }

});
 }}});

//live-zone upcoming exam delet method


//live-zone upcoming exam get method by filter


function getlivezonetestbyfil(){
	
   var fromdate = $("#fromdate").val();
	
	var todate = $("#todate").val();
	
	var category = $("#category").val();
	var standard = $("#standard").val();
	
	var examtype =$("#examtype").val();
	
	var getlivezone = {
			"examtypeId":examtype,
			"categoryId":category,
			"standardId":standard,
			"Fromdate":fromdate,
			"Todate":todate
			}

	var getlivezonestr = JSON.stringify(getlivezone);
	var appenddata = " ";
	$.ajax({
		type: "POST",
		dataType: "json",
		contentType: 'application/json', 
		url: base_url+'rest/livezone/v1/liveZonesbyfilter',
		data:getlivezonestr,
		success: function(data){
			for(var i=0; i<data.length; i++){
				appenddata += "<tr id='liveexam_row"+data[i].id+"' data-id='"+data[i].id+"'><td>"+data[i].testType+"</td>"; 
				appenddata += "<td>"+data[i].testName+"</td>";
				appenddata += "<td>"+data[i].examType+"</td>";
				appenddata += "<td>"+data[i].subjects+"</td>";
				appenddata += "<td>"+data[i].numofquestions+"</td>";
				appenddata += "<td>"+data[i].testTime+"</td>";
				appenddata += "<td>"+data[i].totalMarks+"</td>";
				appenddata += "<td>"+data[i].openingDate+"</td>";
				appenddata += "<td>"+data[i].closingDate+"</td>";

				 /*appenddata += "<td>"+data[i].status+"</td>";*/
				 appenddata += "<td><a href='' class='btn btn-danger btn-xs' onclick='getsyllabus(this)' data-id='"+data[i].id+"' data-toggle='modal' data-target='#exampleModal1' data-whatever='@mdo'>Syllabus</a></td>";
				 if(data[i].suggestsyllabus == true){
				 appenddata += "<td>Enable</td>";
				 }else{
				 	appenddata += "<td>Disable</td>";
				 }
				 appenddata += "<td><a href='' class='btn btn-primary btn-xs' data-toggle='modal' data-target='#exampleModal2' data-whatever='@mdo' onclick='publishedView(this)'  data-id='"+data[i].id+"'>View</a></td>";
				 appenddata	+= "<td><a href=''><span class='btn btn-primary btn-rounded status_btn'>Active</span></a></td>"
				 appenddata += "<td><a class='btn btn-delete btn-icon-anim btn-circle p-10' data-toggle='tooltip' id='live-del"+data[i].id+"' data-id='"+data[i].id+"' data-original-title='Delete'><i class='icon-trash font-18'></i></a></td></tr>";
				 }
				 $("#upcomingexm-body").empty();
				 $('#upcomingexam-table').DataTable().clear().destroy();
				 $("#upcomingexm-body").append(appenddata);
				 $("#upcomingexam-table").DataTable();
		 },
		 error:function(){
			 alert(data.responseJSON.errorMessage);
		 }
	})	
}

//live-zone upcoming exam get method by filter

//live-zone ACTIVE exam get method by filter


function getlivezonetestbyfilter(){
	
   var fromdate = $("#fromdate").val();
	
	var todate = $("#todate").val();
	
	var category = $("#category").val();
	var standard = $("#standard").val();
	
	var examtype =$("#examtype").val();
	var adminId = getAdminId();
	var getlivezone = {
			"adminId":adminId,
			"examtypeId":examtype,
			"categoryId":category,
			"standardId":standard,
			"Fromdate":fromdate,
			"Todate":todate
			}

	var getlivezonestr = JSON.stringify(getlivezone);
	var appenddata = "";
	$.ajax({
		type: "POST",
		 dataType: "json",
		 contentType: 'application/json', 
		 url: base_url+'rest/livezone/v1/getpublishedliveActivezonesFilter',
		 data:getlivezonestr,
		 success: function(data){
			 for(var i=0; i<data.length; i++){
				 appenddata += "<tr id='liveexam_row"+data[i].id+"' data-id='"+data[i].id+"'><td>"+data[i].testType+"</td>"; 
					appenddata += "<td>"+data[i].testName+"</td>";
					appenddata += "<td>"+data[i].examType+"</td>";
					appenddata += "<td>"+data[i].subjects+"</td>";
					appenddata += "<td>"+data[i].numofquestions+"</td>";
					appenddata += "<td>"+data[i].testTime+"</td>";
					appenddata += "<td>"+data[i].openingDate+"</td>";
					appenddata += "<td>"+data[i].closingDate+"</td>";

					/*appenddata += "<td>"+data[i].status+"</td>";*/
					appenddata += "<td><a class='btn'  data-toggle='modal' data-target='#getactivesyllabus' onclick='getActivesyllabus(this)' data-whatever='@mdo' data-id='"+data[i].id+"'><img src='"+base_url+"/assets/images/icons/Syllabus.svg' class='btn-icon' alt='Smiley face' style='width: 30px;height: 29px;'></a></td>";
					/*if(data[i].suggestsyllabus == true){
					appenddata += "<td>Enable</td>";
					}else{
						appenddata += "<td>Disable</td>";
					}*/
					appenddata += "<td><a href='' class='btn btn-success btn-icon-anim btn-circle p-10' data-toggle='modal' data-target='#studentsuggest' data-whatever='@mdo' onclick='liveactiveview(this)'  data-id='"+data[i].id+"'><i class='icon-eye font-18'></i></a></td>";
					appenddata += "<td><a class='btn btn-delete btn-icon-anim btn-circle p-10'  data-id='"+data[i].id+"' onclick='deletelivetest(this)'><i class='icon-trash font-18'></i></a></td>";
					/*appenddata	+= "<td><a href=''><span class='btn btn-primary btn-rounded status_btn'>Active</span></a></td>"
					appenddata += "<td><a class='btn btn-delete btn-icon-anim btn-circle p-10' data-toggle='tooltip' id='live-del"+data[i].id+"' data-id='"+data[i].id+"' data-original-title='Delete'><i class='icon-trash font-18'></i></a></td></tr>";
					*/
					}
					$("#active_body").empty();
					 $('#active_table').DataTable().clear().destroy();
					$("#active_body").append(appenddata);
					$("#active_table").DataTable();
					},
		 error:function(){
			 alert(data.responseJSON.errorMessage);
		 }
	})	
}

//live-zone ACTIVE exam get method by filter

//FOR GETTING SYLLABUS OF LIVEZONE


 function getsyllabus(elem) {
	
	var id = $(elem).attr('data-id');
	var appenddata = "";
	$.ajax({
		type:"GET",
		 dataType: "json",
		 contentType: 'application/json', 
		 url: base_url+'rest/livezone/v1/getsyllabus/'+id,
		 success:function(data){
		/*	 for(var i=0;i<data.length;i++){
				 appenddata += "<td>"+data[i].standard+"</td>";
				 appenddata += "<td>"+data[i].subject+"</td>";
				 appenddata += "<td>"+data[i].chapter+"</td>";
				 appenddata += "<td>"+data[i].topic+"</td>";
				 appenddata += "<td>"+data[i].comment+"</td>";
			 }*/
			/* $("#syllabus_tbody").empty();
			 $("#syllabus_tbody").append(appenddata);
			 $("#syllabus_tbl").DataTable();
			 */
			 $("#viewsyllabus").html(data[0].syllabus);
		 },
		 error:function(data){
			 alert(data.responseJSON.errorMessage);
		 }
	})
	
}

//FOR GETTING SYLLABUS OF LIVEZONE

//for livezone published view
 
 function publishedView(elem){
	 
	 
	 var id = $(elem).attr('data-id');
	 var appenddata = "";
		$.ajax({
			type:"GET",
			 dataType: "json",
			 contentType: 'application/json', 
			 url: base_url+'rest/livezone/v1/getsuggestsyllabus/'+id,
			 success:function(data){
				 $("#totalsuggestcount").html(data.length);
				 for(var i=0;i<data.length;i++){
					 appenddata += "<tr><td>"+data[i].studentAccountId+"</td>";
					 appenddata += "<td>"+data[i].studentName+"</td>";
					 appenddata += "<td>"+data[i].state+"</td>";
					 appenddata += "<td>"+data[i].city+"</td>";
					 appenddata += "<td>"+data[i].standard+"</td>";
					 appenddata += "<td>"+data[i].subject+"</td>";
					 var Chapterslist=[];
	                  var Chapterslistview = data[i].chaptersList;
						
						for(var prev1 = 0; prev1 < Chapterslistview.length;prev1++){
							
							Chapterslist.push(Chapterslistview[prev1].name);
							}
						 appenddata += "<td>"+Chapterslist.join()+"</td>";

					
					 appenddata += "<td>"+data[i].comment+"</td></tr>";
				 }
				 $("#viewtablebody").empty();
				 $('#viewtable').DataTable().clear().destroy();
				 $("#viewtablebody").append(appenddata);
				 $("#viewtable").DataTable();
				 
			 },
			 error:function(data){
				 alert(data.responseJSON.errorMessage);
			 }
		});
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

