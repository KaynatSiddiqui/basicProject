
function getStudentCount(){
	var appenddata = "";
	$.ajax({
		url: base_url+'rest/admin/getAllstudentsCount',
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		beforeSend: function(){
			$("#studentcount-body").empty();
			$("#studentcount-body").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			for(var i=0;i<data.length;i++){
				appenddata +="<tr><td>"+data[i].state+"</td>";
				appenddata +="<td>"+data[i].city+"</td>";
				appenddata +="<td>"+data[i].count+"</td>";
				appenddata +="<td><a href='"+base_url+"jsp/admin/reports/reports_students_count_list.jsp?state="+data[i].stateId+"&city="+data[i].cityID+"' class='btn btn-primary'>Students List</a></td></tr>";
			}
			$("#studentcount-body").empty();
			$("#studentcount-body").append(appenddata);
			$("#studentcount-table").DataTable();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}

function studentcountfilter(){
	var appenddata = "";
	var from = $("#datepicker1").val();
	var from1 = from.split('/');
	var fDate= from1.join("-");
	var to   = $("#datepicker2").val();
	var to1 = to.split("/");
	var tDate = to1.join("-");
	var category = $("#category").val();
	var examtype = $("#examtype").val();
	var state = $("#state").val();
	var city = $("#city").val();
	var application = $("#application option:selected").text();
	var parentLink = $("#parentlink option:selected").text();
	var inputData = {
			"fromdate":fDate,
			"todate":tDate,
			"categoryId":category,
			"examtypeId":examtype,
			"stateId":state,
			"cityId":city,
			"sourcetype":application,
			"parentlink":parentLink
	}

	var outputData = JSON.stringify(inputData);

	$.ajax({
		url: base_url+'rest/admin/studentcountfilter',
		type:"POST",
		dataType:"json",
		data:outputData,
		contentType:'application/json',
		success:function(data){
			for(var i=0;i<data.length;i++){
				appenddata +="<tr><td>"+data[i].state+"</td>";
				appenddata +="<td>"+data[i].city+"</td>";
				appenddata +="<td>"+data[i].count+"</td>";
				appenddata +="<td><a href='"+base_url+"jsp/admin/reports/reports_students_count_list.jsp?state="+data[i].stateId+"&city="+data[i].cityID+"' class='btn btn-primary'>Students List</a></td></tr>";
			}
			$("#student-usage-body").fadeIn();
			$("#student-usage-body").append(appenddata);
			$("#student-usage-table").DataTable();	
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}

function getStudentCountList(){
	appenddata="";
	var state = getParameterByName('state');
	var city = getParameterByName('city');

	$.ajax({
		url : base_url+'rest/admin/getStudentslist/'+state+'/'+city,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			for(var i=0; i<data.length; i++){
				appenddata += "<tr><td>"+data[i].studentFormatId+"</td>";
				appenddata += "<td>"+data[i].name+"</td>";
				appenddata += "<td>"+data[i].source+"</td>";
				appenddata += "<td>"+data[i].state+"</td>";
				appenddata += "<td>"+data[i].city+"</td>";
				appenddata += "<td>"+data[i].category+"</td>";
				appenddata += "<td>"+data[i].examtype+"</td>";
				appenddata += "<td>"+data[i].mobilenumber+"</td>";
				appenddata += "<td>"+data[i].email+"</td>";
				appenddata += "<td>"+data[i].parentname+"</td>";
				appenddata += "<td>"+data[i].parentemail+"</td>";
				appenddata += "<td>"+data[i].parentphonenumber+"</td></tr>";
			}
			$("#student-count-list-body").fadeIn();
			$('#student_count_list').DataTable().clear().destroy();
			$("#student-count-list-body").append(appenddata);
			$("#student_count_list").DataTable();	
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}
//usage
function getAllUsage(){
	var appenddata = "";
	$.ajax({
		url: base_url+'rest/admin/getAllstudentsUsage',
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		beforeSend: function(){
			$("#student-usage-body").empty();
			$("#student-usage-body").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			for(var i=0;i<data.length;i++){
				appenddata += "<tr><td>"+(i+1)+"</td>";
				appenddata +="<td>"+data[i].studentFormatId+"</td>"
				appenddata +="<td>"+data[i].name+"</td>";
				appenddata +="<td>"+data[i].state+"</td>";
				appenddata +="<td>"+data[i].city+"</td>";
				appenddata +="<td>"+data[i].sourcetype+"</td>";
				/*appenddata +="<td>"+data[i].ios+"</td>";
				appenddata +="<td>"+data[i].web+"</td>";*/
				appenddata +="<td>"+data[i].examtype+"</td>";
				/*appenddata +="<td>"+data[i].noOfQnsinPractiseZone+"</td>";
				appenddata +="<td>"+data[i].noOfHoursSpent+"</td>";
				appenddata +="<td>"+data[i].noOfTestsInPracticeZone+"</td>";
				appenddata +="<td>"+data[i].noOfTestsInTestZone+"</td>";*/
				appenddata +="<td>"+data[i].noOftestsInLiveZone+"</td></tr>";
				/*appenddata +="<td>"+data[i].noOfTestsInExpert+"</td></tr>";*/
			}
			$("#student-usage-body").empty();
			$("#student-usage-body").append(appenddata);
			$("#student-usage-table").DataTable();	
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}
function studentUsageSubmit(){
	var appenddata = "";
	var from = $("#datepicker1").val();
	var from1 = from.split('/');
	var fDate= from1.join("-");
	var to   = $("#datepicker2").val();
	var to1 = to.split("/");
	var tDate = to1.join("-");
	/*var standard = $("#standard").val();*/
	var examtype = $("#examtype").val();
	var state = $("#state").val();
	var city = $("#city").val();
	var application = $("#application option:selected").text();
	var parentLink = $("#parentlink option:selected").text();
	var inputData = {
			"fromdate":fDate,
			"todate":tDate,
			/*"standardId":standard,*/
			"examtypeId":examtype,
			"stateId":state,
			"cityId":city,
			"sourcetype":application,
			"parentlink":parentLink
	}

	var outputData = JSON.stringify(inputData);

	$.ajax({
		url: base_url+'rest/admin/getStudentsusagefilter',
		type:"POST",
		dataType:"json",
		data:outputData,
		contentType:'application/json',
		success:function(data){
			for(var i=0;i<data.length;i++){
				appenddata += "<tr><td>"+data[i].id+"</td>";
				appenddata +="<td>"+data[i].name+"</td>";
				appenddata +="<td>"+data[i].state+"</td>";
				appenddata +="<td>"+data[i].city+"</td>";
				appenddata +="<td>"+data[i].andriod+"</td>";
				appenddata +="<td>"+data[i].ios+"</td>";
				appenddata +="<td>"+data[i].web+"</td>";
				appenddata +="<td>"+data[i].examtype+"</td>";
				/*appenddata +="<td>"+data[i].praticezone+"</td>";
				appenddata +="<td>"+data[i].hrsspent+"</td>";
				appenddata +="<td>"+data[i].testpratice+"</td>";
				appenddata +="<td>"+data[i].testzone+"</td>";*/
				appenddata +="<td>"+data[i].livezone+"</td></tr>";
				/*appenddata +="<td>"+data[i].expertpost+"</td></tr>";*/
			}
			$("#student-usage-body").fadeIn();
			$("#student-usage-body").append(appenddata);
			$("#student-usage-table").DataTable();	
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}
//usage
function liveExamReports(){
	appenddata="";
	$.ajax({
		url : base_url+'rest/admin/getStudentLiveExamReport',
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		beforeSend: function(){
			$("#reports_body").empty();
			$("#reports_body").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			for(var i=0;i<data.length;i++){
				appenddata += "<tr><td>"+(i+1)+"</td>";
				appenddata += "<td>"+data[i].testname+"</td>";
				appenddata += "<td>"+data[i].testtype+"</td>";
				appenddata += "<td>"+data[i].activedate+"</td>";
				appenddata += "<td>"+data[i].expiredate+"</td>";
				appenddata += "<td>"+data[i].noofstudentsappeared+"</td>";
				appenddata +=" <td><a href='"+base_url+"jsp/admin/reports/reports_live_exam_report_count_in_excel.jsp?id="+data[i].testpostId+"' class='btn btn-info'>Download</a></td>"
				appenddata += "<td><a href='"+base_url+"jsp/admin/reports/reports_live_exam_report_list.jsp?id="+data[i].testpostId+"' class='btn btn-primary'>Students List</a></td></tr>"

			}
			$("#reports_body").empty();
			$("#reports_body").append(appenddata);
			$("#reports_table").DataTable();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}
//excel count
function excelCountGet(){
	var appenddata =""
		var id = getParameterByName('id');
	$.ajax({
		url : base_url+'rest/admin/getLiveExamreportStudentcount/'+id,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			for(var i=0;i<data.length;i++){
				appenddata += "<tr><td>"+(i+1)+"</td>";
				appenddata += "<td>"+data[i].state+"</td>";
				appenddata += "<td>"+data[i].city+"</td>";
				appenddata += "<td>"+data[i].count+"</td></tr>";
			}

			$("#excel-body").fadeIn();
			$("#excel-body").append(appenddata);
			$("#excel-table").DataTable();

		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}
function liveExamReportsFilter(){
	var appenddata = "";
	var from = $("#datepicker1").val();
	var from1 = from.split('/');
	var fDate= from1.join("-");
	var to   = $("#datepicker2").val();
	var to1 = to.split("/");
	var tDate = to1.join("-");
	var category =$("#category").val();
	var examtype = $("#examtype").val();
	var testtype = $("#testtype option:selected").text();
	/*var signup2 = $("#signuptype2").val();*/
	if(testtype ==="" || testtype === null || testtype === "---Select---" || testtype === undefined){
		return false;
	}
	var inputData = {
			"fromdate":fDate,
			"todate":tDate,
			"categoryId":category,
			"examtypeId":examtype,
			"testtype":testtype
	}

	var outputData = JSON.stringify(inputData);
	$.ajax({

		url : base_url+'rest/admin/getLiveexamReportfilter',
		type:"POST",
		dataType:"json",
		contentType:'application/json',
		data:outputData,
		success:function(data){
			for(var i=0;i<data.length;i++){
				appenddata += "<tr><td>"+(i+1)+"</td>";
				appenddata += "<td>"+data[i].testname+"</td>";
				appenddata += "<td>"+data[i].testtype+"</td>";
				appenddata += "<td>"+data[i].activedate+"</td>";
				appenddata += "<td>"+data[i].expiredate+"</td>";
				appenddata += "<td>"+data[i].noofstudentsappeared+"</td>";
				appenddata +=" <td><a href='"+base_url+"jsp/admin/reports/reports_live_exam_report_count_in_excel.jsp?id="+data[i].testpostId+"' class='btn btn-info'>Download</a></td>"
				appenddata += "<td><a href='"+base_url+"jsp/admin/reports/reports_live_exam_report_list.jsp?id="+data[i].testpostId+"' class='btn btn-primary'>Students List</a></td></tr>"

			}
			$("#reports_body").fadeIn();
			$("#reports_body").append(appenddata);
			$("#reports_table").DataTable();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}


	})
}
//live exam report list
function getLiveExamReportList(){
	var id = getParameterByName('id');
	appenddata="";
	$.ajax({
		url : base_url+'rest/admin/getLiveExamStudentslist/'+id,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			for(var i=0;i<data.length;i++){
				appenddata += "<tr><td>"+(i+1)+"</td>";
				appenddata += "<td>"+data[i].studentname+"</td>";
				appenddata += "<td>"+data[i].state+"</td>";
				appenddata += "<td>"+data[i].city+"</td>";
				appenddata += "<td>"+data[i].marks+"</td>";
				appenddata += "<td>"+data[i].negitivemarks+"</td>";
				appenddata += "<td>"+data[i].accuracy+"</td>";
				appenddata += "<td>"+data[i].rank+"</td></tr>";
			}
			$("#live-exam-body").fadeIn();
			$("#live-exam-body").append(appenddata);
			$("#live-exam-table").Datatable();
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})
}
//live exam report
//signup get
function signUpGet(){
	var appenddata ="";
	$.ajax({
		url : base_url+'rest/admin/getAllstudentsSignup7',
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		beforeSend: function(){
			$("#report-sing-up-body").empty();
			$("#report-sing-up-body").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		},
		success:function(data){
			for(var i=0;i<data.length;i++){
				appenddata += "<tr><td>"+(i+1)+"</td>";
				appenddata +="<td>"+data[i].studentFormatId+"</td>";
				appenddata +="<td>"+data[i].name+"</td>";
				appenddata +="<td>"+data[i].gender+"</td>";
				appenddata +="<td>"+data[i].state+"</td>";
				appenddata +="<td>"+data[i].city+"</td>";
				appenddata +="<td>"+data[i].emailid+"</td>";
				appenddata +="<td>"+data[i].mobilenumber+"</td>";
				appenddata +="<td>"+data[i].sourcetype+"</td></tr>";
			}
			
			$("#report-sing-up-body").empty();	
			$("#report-sing-up-table").DataTable().clear().destroy();
			$("#report-sing-up-body").append(appenddata);
			$("#report-sing-up-table").DataTable();
		},
		error:function(data){
			//if(data.responseJSON.status == false){
			

			 alert(data.responseJSON.errorMessage);
			/* $("#report-sing-up-table").empty();	
				 $("#report-sing-up-table").html('<div class="centerVHWidth"><h5 class="center" style="font-size:20px;font-weight:bold;">No students Found for last 7 days :(</h5></div>');
				*/
				 return;
			//}
			//alert(data.responseJSON.errorMessage);
		}
	})
}


//report sing up
function reportSingUpFilter(){
	var appenddata = "";
	var from = $("#datepicker1").val();
	var from1 = from.split('/');
	var fDate= from1.join("-");
	var to   = $("#datepicker2").val();
	var to1 = to.split("/");
	var tDate = to1.join("-");
	var signup1 = $("#signuptype option:selected").text();
	/*var signup2 = $("#signuptype2").val();*/
	if(signup1 ==="" || signup1 === null || signup1 === "---Select---" || signup1 === undefined){
		return false;
	}

	var inputData = {
			"fromdate":fDate,
			"todate":tDate,
			"signup1":signup1
			/* "signup2":signup2*/
	}

	var outputData = JSON.stringify(inputData);
	$.ajax({
		url: base_url+'rest/admin/getsignupdetailsbyfilter',
		type:"POST",
		dataType:"json",
		data:outputData,
		contentType:'application/json',
		success:function(data){
			for(var i=0;i<data.length;i++){
				appenddata += "<tr><td>"+(i+1)+"</td>";
				appenddata +="<td>"+data[i].studentFormatId+"</td>";
				appenddata +="<td>"+data[i].name+"</td>";
				appenddata +="<td>"+data[i].gender+"</td>";
				appenddata +="<td>"+data[i].state+"</td>";
				appenddata +="<td>"+data[i].city+"</td>";
				appenddata +="<td>"+data[i].emailid+"</td>";
				appenddata +="<td>"+data[i].mobilenumber+"</td>";
				appenddata +="<td>"+data[i].sourcetype+"</td></tr>";
				/*appenddata +="<td>"+data[i].type2+"</td>";*/
				/*appenddata +="<td>"+data[i].sub-product+"</td>";
				appenddata +="<td>"+data[i].sub-period+"</td>";*/
			}
			$("#report-sing-up-body").empty();
			$("#report-sing-up-table").DataTable().clear().destroy();
			/*$("#report-sing-up-body").fadeIn();*/
			$("#report-sing-up-body").append(appenddata);
			$("#report-sing-up-table").DataTable();	
		},
		error:function(data){
			alert(data.responseJSON.errorMessage);
		}
	})

}
//report sing up



